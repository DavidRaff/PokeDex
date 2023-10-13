//
//  Stats.swift
//  Dex3
//
//  Created by David Laczkovits on 10.10.23.
//

import SwiftUI
import Charts

struct Stats: View {
    
    @EnvironmentObject var pokemon : Pokemon
    
    var body: some View {
        Chart(pokemon.stats) { stat in
            BarMark(
                x: .value("value", stat.value),
                y: .value("Stat", stat.label)
            )
            .annotation(position: .trailing) {
                Text("\(stat.value)")
                    .padding(.top, -5)
                    .foregroundStyle(.secondary)
                    .font(.subheadline)
            }
        }
        .frame(height: 200)
        .padding([.leading,.bottom,.trailing])
        .foregroundStyle(Color(pokemon.types![0].capitalized))
        .chartXScale(domain: 0...pokemon.highestStat.value + 5)
    }
}

#Preview {
    Stats()
        .environmentObject(SamplePokemon.samplePokemon)
}